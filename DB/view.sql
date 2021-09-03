update tblreviewreply set classreviewseq = 2 where reviewreplyseq = 34;
update tblreviewreply set classreviewseq = 3 where reviewreplyseq = 32;
update tblreviewreply set classreviewseq = 7 where reviewreplyseq = 40;
update tblreviewreply set classreviewseq = 9 where reviewreplyseq = 24;
update tblreviewreply set classreviewseq = 11 where reviewreplyseq = 18;
update tblreviewreply set classreviewseq = 13 where reviewreplyseq = 45;
update tblreviewreply set classreviewseq = 16 where reviewreplyseq = 23;
update tblreviewreply set classreviewseq = 17 where reviewreplyseq = 26;
update tblreviewreply set classreviewseq = 18 where reviewreplyseq = 42;
update tblreviewreply set classreviewseq = 22 where reviewreplyseq = 31;
update tblreviewreply set classreviewseq = 23 where reviewreplyseq = 28;
update tblreviewreply set classreviewseq = 27 where reviewreplyseq = 49;
update tblreviewreply set classreviewseq = 29 where reviewreplyseq = 5;
update tblreviewreply set classreviewseq = 32 where reviewreplyseq = 21;
update tblreviewreply set classreviewseq = 34 where reviewreplyseq = 38;
update tblreviewreply set classreviewseq = 43 where reviewreplyseq = 13;
update tblreviewreply set classreviewseq = 44 where reviewreplyseq = 9;
update tblreviewreply set classreviewseq = 49 where reviewreplyseq = 50;







create or replace view vwMyClassList                        
as
select 
    c.classseq as classSeq,
    c.hostSeq as hostSeq,
    c.title as title,
    c.content as content,
    c.categorybig as categoryBig,
    c.categorysmall as categorySmall,
    c.location as location,
    c.latitude as latitude,
    c.longitude as longitude,
    ci.classimage as classImage
from tblClass c
    inner join tblClassImage ci
        on c.classseq = ci.classseq
            where ci.classImageSeq in(select max(classImageSeq) 
                from tblclassimage
                    group by classseq);


create or replace view vwClassList
as
select 
    c.classseq, c.title, c.categoryBig, c.categorySmall, c.latitude, c.longitude,
    min(o.price) as price,
    i.classimage as classImage,
    count(distinct recommendSeq) as recommend
    --,avg(cscor.score) as score
from tblClass c
    inner join tblClassOption o
        on c.classseq = o.classseq
        inner join tblClassImage i
            on c.classseq = i.classseq
                inner join
                    (select  min(classimageseq) as classimageseq, classseq  from tblClassImage group by classSeq) ci
                     on i.classimageseq = ci.classimageseq
                        inner join tblclassrecommend r
                            on c.classseq = r.classseq
                            left outer join tblSignupClass s
                                on o.classoptionseq = s.classoptionseq
                                    left outer join tblClassReview cr
                                        on s.signupseq = cr.signupseq
        group by c.classseq, c.title, c.categorybig, c.categorysmall, c.latitude,c.longitude, i.classimage, i.classimageseq;



create or replace view VWCLASSREVIEW
as
select 
c.classseq as classSeq,
c.hostseq as hostSeq,
cr.classreviewseq as classReviewSeq,
c.title as title,
co.classDate as classDate,
u.nickname as nickname,
cr.content as content,
cr.regdate as regdate,
cr.score as score
from tblClass c
    inner join tblClassOption co
        on c.classSeq = co.classSeq
            inner join tblSignupClass sc
                on co.classOptionSeq = sc.classOptionSeq
                    inner join tblUser u
                        on sc.userSeq = u.userSeq
                            inner join tblClassReview cr
                                on sc.signupSeq = cr.signupSeq;