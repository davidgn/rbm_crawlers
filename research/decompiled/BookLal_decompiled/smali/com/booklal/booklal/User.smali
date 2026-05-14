.class public Lcom/booklal/booklal/User;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private MsgSeen:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private profileImage:Ljava/lang/String;

.field private stringTimeStamp:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/booklal/booklal/User;->uid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/booklal/booklal/User;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/booklal/booklal/User;->phoneNumber:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/booklal/booklal/User;->profileImage:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/booklal/booklal/User;->stringTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/booklal/booklal/User;->uid:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/booklal/booklal/User;->name:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/booklal/booklal/User;->phoneNumber:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/booklal/booklal/User;->profileImage:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/booklal/booklal/User;->stringTimeStamp:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/booklal/booklal/User;->MsgSeen:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getMsgSeen()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/User;->MsgSeen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/User;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/User;->profileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getStringTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/User;->stringTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/User;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgSeen(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/User;->MsgSeen:Ljava/lang/Boolean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/User;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setProfileImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/User;->profileImage:Ljava/lang/String;

    return-void
.end method

.method public setStringTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/User;->stringTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/User;->uid:Ljava/lang/String;

    return-void
.end method
