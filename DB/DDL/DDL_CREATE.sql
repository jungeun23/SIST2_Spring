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
    reviewImageSeq  NUMBER NOT NULL,
    reviewImage     VARCHAR2(500) NOT NULL,
    classReviewSeq  NUMBER NOT NULL
);

CREATE TABLE tblReviewReply (
    reviewReplySeq  NUMBER NOT NULL,
    content         VARCHAR2(2000) NOT NULL,
    regdate         DATE NOT NULL,
    classReviewSeq  NUMBER NOT NULL
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
    ADD CONSTRAINT fk_host_class FOREIGN KEY ( hostSeq )
        REFERENCES tblHost ( hostSeq );

ALTER TABLE tblClassReview
    ADD CONSTRAINT fk_signupClass_classReview FOREIGN KEY ( signupSeq )
        REFERENCES tblsignupClass ( signupSeq );

ALTER TABLE tblSignupClass
    ADD CONSTRAINT fk_classOption_signupClass FOREIGN KEY ( classOptionSeq )
        REFERENCES tblClassOption ( classOptionSeq );

ALTER TABLE tblSignupClass
    ADD CONSTRAINT fk_user_signupClass FOREIGN KEY ( userSeq )
        REFERENCES tblUser ( userSeq );

ALTER TABLE tblclassScrap
    ADD CONSTRAINT fk_user_classScrap FOREIGN KEY ( userSeq )
        REFERENCES tblUser ( userSeq );

ALTER TABLE tblclassScrap
    ADD CONSTRAINT fk_class_classScrap FOREIGN KEY ( classSeq )
        REFERENCES tblClass ( classSeq );

ALTER TABLE tblClassRecommend
    ADD CONSTRAINT fk_user_classRecommend FOREIGN KEY ( userSeq )
        REFERENCES tblUser ( userSeq );

ALTER TABLE tblClassRecommend
    ADD CONSTRAINT fk_class_classRecommend FOREIGN KEY ( classSeq )
        REFERENCES tblClass ( classSeq );

ALTER TABLE tblHostScrap
    ADD CONSTRAINT fk_user_hostScrap FOREIGN KEY ( userSeq )
        REFERENCES tblUser ( userSeq );

ALTER TABLE tblHostScrap
    ADD CONSTRAINT fk_host_hostscrap FOREIGN KEY (hostSeq)
        REFERENCES tblHost (hostSeq);

ALTER TABLE tblClassImage
    ADD CONSTRAINT fk_class_classimage FOREIGN KEY ( classSeq )
        REFERENCES tblClass ( classSeq );

ALTER TABLE tblClassOption
    ADD CONSTRAINT fk_class_classoption FOREIGN KEY ( classSeq )
        REFERENCES tblClass ( classSeq );

ALTER TABLE tblReviewImage
    ADD CONSTRAINT fk_classreview_reviewimage FOREIGN KEY ( classReviewSeq )
        REFERENCES tblClassReview ( classReviewSeq );


ALTER TABLE tblReviewReply
    ADD CONSTRAINT fk_classreview_reviewreply FOREIGN KEY ( classReviewSeq )
        REFERENCES tblClassReview ( classReviewSeq );


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
