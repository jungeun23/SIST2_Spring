CREATE TABLE tbluser (
    userseq  NUMBER NOT NULL,
    name       VARCHAR2(30)  NOT NULL,
    nickname   VARCHAR2(50) unique NOT NULL,
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

CREATE TABLE tblclass (
    classseq       NUMBER NOT NULL,
    hostseq        NUMBER NOT NULL,
    title          VARCHAR2(200) NOT NULL,
    content        VARCHAR2(4000) NOT NULL,
    categorybig    VARCHAR2(100) NOT NULL,
    categorysmall  VARCHAR2(100) NOT NULL,
    location       VARCHAR2(200) NOT NULL,
    personnel      NUMBER NOT NULL,
    latitude       NUMBER NOT NULL,
    longitude      NUMBER NOT NULL
);

CREATE TABLE tblclassreview (
    classreviewseq  NUMBER NOT NULL,
    signupseq       NUMBER NOT NULL,
    content         VARCHAR2(1000) NOT NULL,
    regdate         DATE DEFAULT sysdate NOT NULL,
    score           NUMBER DEFAULT 0 NOT NULL,
    recommend       NUMBER DEFAULT 0 NOT NULL
);

CREATE TABLE tblnotice (
    noticeseq  NUMBER NOT NULL,
    title      VARCHAR2(300) NOT NULL,
    content    VARCHAR2(1000) NOT NULL,
    regdate    DATE DEFAULT sysdate NOT NULL,
    category   VARCHAR2(100) NOT NULL
);

CREATE TABLE tblsignupclass (
    signupseq    NUMBER NOT NULL,
    regdate      DATE DEFAULT sysdate NOT NULL,
    classOptionSeq NUMBER NOT NULL,
    userseq    NUMBER NOT NULL
);

CREATE TABLE tblclassscrap (
    classscrapseq  NUMBER NOT NULL,
    userseq      NUMBER NOT NULL,
    classseq       NUMBER NOT NULL
);

CREATE TABLE tblclassrecommend (
    recommendseq  NUMBER NOT NULL,
    userseq     NUMBER NOT NULL,
    classseq      NUMBER NOT NULL
);

CREATE TABLE tblquestion (
    questionseq  NUMBER NOT NULL,
    title        VARCHAR2(300) NOT NULL,
    content      VARCHAR2(1000) NOT NULL,
    category     VARCHAR2(100) NOT NULL
);

CREATE TABLE tblhostscrap (
    hostscrapseq  NUMBER NOT NULL,
    userseq     NUMBER NOT NULL,
    hostseq       NUMBER NOT NULL
);

CREATE TABLE tblclassimage (
    classimageseq  NUMBER NOT NULL,
    classimage     VARCHAR2(500) DEFAULT '/classDefault.png' NOT NULL,
    classseq       NUMBER NOT NULL
);

CREATE TABLE tblclassoption (
    classoptionseq  NUMBER NOT NULL,
    classdate       DATE NOT NULL,
    classoption     VARCHAR2(200) NOT NULL,
    price           NUMBER NOT NULL,
    classseq        NUMBER NOT NULL
);

CREATE TABLE tblreviewimage (
    reviewimageseq  NUMBER NOT NULL,
    reviewimage     VARCHAR2(500) NOT NULL,
    classreviewseq  NUMBER NOT NULL
);

CREATE TABLE tblreviewreply (
    reviewreplyseq  NUMBER NOT NULL,
    content         VARCHAR2(1000) NOT NULL,
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
    ADD CONSTRAINT fk_host_hostscrap FOREIGN KEY ( hostseq )
        REFERENCES tblhost ( hostseq );

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
