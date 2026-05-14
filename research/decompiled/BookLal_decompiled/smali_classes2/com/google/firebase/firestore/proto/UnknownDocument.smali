.class public final Lcom/google/firebase/firestore/proto/UnknownDocument;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/K;",
        "Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private name_:Ljava/lang/String;

.field private version_:Lcom/google/protobuf/T0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    const-class v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/firestore/proto/UnknownDocument;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->clearName()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->setNameBytes(Lcom/google/protobuf/m;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->setVersion(Lcom/google/protobuf/T0;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->mergeVersion(Lcom/google/protobuf/T0;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->clearVersion()V

    return-void
.end method

.method private clearName()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method private mergeVersion(Lcom/google/protobuf/T0;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    invoke-static {v0}, Lcom/google/protobuf/T0;->l(Lcom/google/protobuf/T0;)Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/S0;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[BLcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/UnknownDocument;

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

    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/m;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/c;->checkByteStringIsUtf8(Lcom/google/protobuf/m;)V

    invoke-virtual {p1}, Lcom/google/protobuf/m;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    return-void
.end method

.method private setVersion(Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

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
    sget-object p1, Lcom/google/firebase/firestore/proto/UnknownDocument;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/firestore/proto/UnknownDocument;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/firestore/proto/UnknownDocument;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/firebase/firestore/proto/UnknownDocument;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    invoke-direct {p1, p2}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;-><init>(Lcom/google/firebase/firestore/proto/UnknownDocument$1;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-direct {p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;-><init>()V

    return-object p1

    :pswitch_4
    const-string p1, "name_"

    const-string p2, "version_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    sget-object p3, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

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

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/m;->n(Ljava/lang/String;)Lcom/google/protobuf/l;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/T0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
