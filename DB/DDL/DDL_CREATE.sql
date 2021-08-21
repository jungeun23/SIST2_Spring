CREATE TABLE tblUser (
    userSeq  NUMBER NOT NULL,
    name       VARCHAR2(30)  NOT NULL,
    nickName   VARCHAR2(50) unique NOT NULL,
    birth      VARCHAR2(50) NOT NULL,
    gender     VARCHAR2(30) NOT NULL,
    id         VARCHAR2(100) unique NOT NULL,
    email      VARCHAR2(200) NOT NULL,
    pw         VARCHAR2(100) NOT NULL,
    tel        VARCHAR2(100) NOT NULL,
    point      NUMBER DEFAULT 0 NOT NULL,
    address    VARCHAR2(200) NOT NULL,
    auth       NUMBER DEFAULT 1 NOT NULL,
    image      VARCHAR2(300) DEFAULT '/userDefault.png' NOT NULL
);

CREATE TABLE tblClass (
    classSeq       NUMBER NOT NULL,
    hostSeq        NUMBER NOT NULL,
    title          VARCHAR2(200) NOT NULL,
    content        VARCHAR2(4000) NOT NULL,
    categoryBig    VARCHAR2(100) NOT NULL,
    categorySmall  VARCHAR2(100) NOT NULL,
    location       VARCHAR2(200) NOT NULL,
    latitude       NUMBER NOT NULL,
    longitude      NUMBER NOT NULL
);

CREATE TABLE tblClassReview (
    classReviewSeq  NUMBER NOT NULL,
    signupSeq       NUMBER NOT NULL,
    content         VARCHAR2(3000) NOT NULL,
    regdate         DATE DEFAULT sysdate NOT NULL,
    score           NUMBER DEFAULT 0 NOT NULL,
    recommend       NUMBER DEFAULT 0 NOT NULL
);

CREATE TABLE tblNotice (
    noticeSeq  NUMBER NOT NULL,
    title      VARCHAR2(300) NOT NULL,
    content    VARCHAR2(4000) NOT NULL,
    regdate    DATE DEFAULT sysdate NOT NULL,
    category   VARCHAR2(100) NOT NULL
);

CREATE TABLE tblsignupClass (
    signupSeq    NUMBER NOT NULL,
    regdate      DATE DEFAULT sysdate NOT NULL,
    classOptionSeq NUMBER NOT NULL,
    userSeq    NUMBER NOT NULL
);

CREATE TABLE tblClassScrap (
    classScrapSeq  NUMBER NOT NULL,
    userSeq      NUMBER NOT NULL,
    classSeq       NUMBER NOT NULL
);

CREATE TABLE tblClassRecommend (
    recommendSeq  NUMBER NOT NULL,
    userSeq     NUMBER NOT NULL,
    classSeq      NUMBER NOT NULL
);

CREATE TABLE tblQuestion (
    questionSeq  NUMBER NOT NULL,
    title        VARCHAR2(300) NOT NULL,
    content      VARCHAR2(4000) NOT NULL,
    category     VARCHAR2(100) NOT NULL
);

CREATE TABLE tblHostScrap (
    hostScrapSeq  NUMBER NOT NULL,
    userSeq     NUMBER NOT NULL,
    hostSeq       NUMBER NOT NULL
);

CREATE TABLE tblClassImage (
    classImageSeq  NUMBER NOT NULL,
    classImage     VARCHAR2(500) DEFAULT '/classDefault.png' NOT NULL,
    classSeq       NUMBER NOT NULL
);

CREATE TABLE tblClassOption (
    classOptionSeq  NUMBER NOT NULL,
    classDate       DATE NOT NULL,
    classOption     VARCHAR2(200) NOT NULL,
    price           NUMBER NOT NULL,
    personnel      NUMBER NOT NULL,
    classSeq        NUMBER NOT NULL
);

CREATE TABLE tblReviewImage (
    reviewimageseq  NUMBER NOT NULL,
    reviewimage     VARCHAR2(500) NOT NULL,
    classreviewseq  NUMBER NOT NULL
);

CREATE TABLE tblreviewreply (
    reviewreplyseq  NUMBER NOT NULL,
    content         VARCHAR2(2000) NOT NULL,
    regdate         DATE NOT NULL,
    classreviewseq  NUMBER NOT NULL
);

CREATE TABLE tblhost (
    hostseq   NUMBER NOT NULL,
    name      VARCHAR2(30) NOT NULL,
    nickname  VARCHAR2(50) unique NOT NULL,
    birth     VARCHAR2(50) NOT NULL,
    gender    VARCHAR2(30) NOT NULL,
    id        VARCHAR2(50) unique NOT NULL,
    email     VARCHAR2(100)  NOT NULL,
    pw        VARCHAR2(50) NOT NULL,
    tel       VARCHAR2(30) NOT NULL,
    point     NUMBER DEFAULT 0 NOT NULL,
    address   VARCHAR2(200) NOT NULL,
    auth      NUMBER DEFAULT 2 NOT NULL,
    image     VARCHAR2(200) DEFAULT '/hostDefault.png' NOT NULL
);

ALTER TABLE tbluser ADD CONSTRAINT pk_tbluser PRIMARY KEY ( userseq );

ALTER TABLE tblclass ADD CONSTRAINT pk_tblclass PRIMARY KEY ( classseq );

ALTER TABLE tblclassreview ADD CONSTRAINT pk_tblclassreview PRIMARY KEY ( classreviewseq );

ALTER TABLE tblnotice ADD CONSTRAINT pk_tblnotice PRIMARY KEY ( noticeseq );

ALTER TABLE tblsignupclass ADD CONSTRAINT pk_tblsignupclass PRIMARY KEY ( signupseq );

ALTER TABLE tblclassscrap ADD CONSTRAINT pk_tblclassscrap PRIMARY KEY ( classscrapseq );

ALTER TABLE tblclassrecommend ADD CONSTRAINT pk_tblclassrecommend PRIMARY KEY ( recommendseq );

ALTER TABLE tblquestion ADD CONSTRAINT pk_tblquestion PRIMARY KEY ( questionseq );

ALTER TABLE tblhostscrap ADD CONSTRAINT pk_tblhostscrap PRIMARY KEY ( hostscrapseq );

ALTER TABLE tblclassimage ADD CONSTRAINT pk_tblclassimage PRIMARY KEY ( classimageseq );

ALTER TABLE tblclassoption ADD CONSTRAINT pk_tblclassoption PRIMARY KEY ( classoptionseq );

ALTER TABLE tblreviewimage ADD CONSTRAINT pk_tblreviewimage PRIMARY KEY ( reviewimageseq );

ALTER TABLE tblreviewreply ADD CONSTRAINT pk_tblreviewreply PRIMARY KEY ( reviewreplyseq );

ALTER TABLE tblhost ADD CONSTRAINT pk_tblhost PRIMARY KEY ( hostseq );

ALTER TABLE tblclass
    ADD CONSTRAINT fk_host_class FOREIGN KEY ( hostseq )
        REFERENCES tblhost ( hostseq );

ALTER TABLE tblclassreview
    ADD CONSTRAINT fk_signupclass_classreview FOREIGN KEY ( signupseq )
        REFERENCES tblsignupclass ( signupseq );

ALTER TABLE tblsignupclass
    ADD CONSTRAINT fk_classoption_signupclass FOREIGN KEY ( classoptionseq )
        REFERENCES tblclassoption ( classoptionseq );

ALTER TABLE tblsignupclass
    ADD CONSTRAINT fk_user_signupclass FOREIGN KEY ( userseq )
        REFERENCES tbluser ( userseq );

ALTER TABLE tblclassscrap
    ADD CONSTRAINT fk_user_classscrap FOREIGN KEY ( userseq )
        REFERENCES tbluser ( userseq );

ALTER TABLE tblclassscrap
    ADD CONSTRAINT fk_class_classscrap FOREIGN KEY ( classseq )
        REFERENCES tblclass ( classseq );

ALTER TABLE tblclassrecommend
    ADD CONSTRAINT fk_user_classrecommend FOREIGN KEY ( userseq )
        REFERENCES tbluser ( userseq );

ALTER TABLE tblclassrecommend
    ADD CONSTRAINT fk_class_classrecommend FOREIGN KEY ( classseq )
        REFERENCES tblclass ( classseq );

ALTER TABLE tblhostscrap
    ADD CONSTRAINT fk_user_hostscrap FOREIGN KEY ( userseq )
        REFERENCES tbluser ( userseq );

ALTER TABLE tblhostscrap
    ADD CONSTRAINT fk_host_hostscrap FOREIGN KEY (hostseq)
        REFERENCES tblhost (hostseq);

ALTER TABLE tblclassimage
    ADD CONSTRAINT fk_class_classimage FOREIGN KEY ( classseq )
        REFERENCES tblclass ( classseq );

ALTER TABLE tblclassoption
    ADD CONSTRAINT fk_class_classoption FOREIGN KEY ( classseq )
        REFERENCES tblclass ( classseq );

ALTER TABLE tblreviewimage
    ADD CONSTRAINT fk_classreview_reviewimage FOREIGN KEY ( classreviewseq )
        REFERENCES tblclassreview ( classreviewseq );


ALTER TABLE tblreviewreply
    ADD CONSTRAINT fk_classreview_reviewreply FOREIGN KEY ( classreviewseq )
        REFERENCES tblclassreview ( classreviewseq );


create sequence seqUser;
create sequence seqClass;
create sequence seqClassReview;
create sequence seqNotice;
create sequence seqSignUpClass;
create sequence seqClassScrap;
create sequence seqClassRecommend;
create sequence seqQuestion;
create sequence seqHostScrap;
create sequence seqClassImage;
create sequence seqClassOption;
create sequence seqReviewImage;
create sequence seqReviewReply;
create sequence seqHost;

select * from tab; 
