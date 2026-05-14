.class public final Lcom/google/firebase/inappmessaging/ClientAppInfo;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ClientAppInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/K;",
        "Lcom/google/firebase/inappmessaging/ClientAppInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

.field public static final FIREBASE_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private firebaseInstanceId_:Ljava/lang/String;

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    const-class v1, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/inappmessaging/ClientAppInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setGoogleAppId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->clearGoogleAppId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/inappmessaging/ClientAppInfo;Lcom/google/protobuf/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setGoogleAppIdBytes(Lcom/google/protobuf/m;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/inappmessaging/ClientAppInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setFirebaseInstanceId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/inappmessaging/ClientAppInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->clearFirebaseInstanceId()V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/inappmessaging/ClientAppInfo;Lcom/google/protobuf/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->setFirebaseInstanceIdBytes(Lcom/google/protobuf/m;)V

    return-void
.end method

.method private clearFirebaseInstanceId()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private clearGoogleAppId()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ClientAppInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/ClientAppInfo;)Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/ClientAppInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[BLcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/B0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/B0;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method

.method private setFirebaseInstanceId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private setFirebaseInstanceIdBytes(Lcom/google/protobuf/m;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/m;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    return-void
.end method

.method private setGoogleAppId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    return-void
.end method

.method private setGoogleAppIdBytes(Lcom/google/protobuf/m;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/m;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->PARSER:Lcom/google/protobuf/B0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;

    invoke-direct {p1, p2}, Lcom/google/firebase/inappmessaging/ClientAppInfo$Builder;-><init>(Lcom/google/firebase/inappmessaging/ClientAppInfo$1;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/ClientAppInfo;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "googleAppId_"

    const-string p3, "firebaseInstanceId_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    sget-object p3, Lcom/google/firebase/inappmessaging/ClientAppInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ClientAppInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/K;->newMessageInfo(Lcom/google/protobuf/t0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    return-object p2

    :pswitch_6
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFirebaseInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirebaseInstanceIdBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->firebaseInstanceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/m;->n(Ljava/lang/String;)Lcom/google/protobuf/l;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAppIdBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->googleAppId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/m;->n(Ljava/lang/String;)Lcom/google/protobuf/l;

    move-result-object v0

    return-object v0
.end method

.method public hasFirebaseInstanceId()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoogleAppId()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/ClientAppInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
