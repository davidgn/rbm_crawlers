.class public Lcom/booklal/booklal/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private feeling:I

.field private message:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private senderId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/booklal/booklal/Message;->feeling:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/booklal/booklal/Message;->feeling:I

    .line 5
    iput-object p1, p0, Lcom/booklal/booklal/Message;->message:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/booklal/booklal/Message;->senderId:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/booklal/booklal/Message;->timestamp:J

    return-void
.end method


# virtual methods
.method public getFeeling()I
    .locals 1

    iget v0, p0, Lcom/booklal/booklal/Message;->feeling:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/booklal/booklal/Message;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/booklal/booklal/Message;->timestamp:J

    return-wide v0
.end method

.method public setFeeling(I)V
    .locals 0

    iput p1, p0, Lcom/booklal/booklal/Message;->feeling:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/Message;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/Message;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/booklal/booklal/Message;->senderId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/booklal/booklal/Message;->timestamp:J

    return-void
.end method
