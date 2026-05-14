.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Content;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;,
        Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/K;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ContentOrBuilder;"
    }
.end annotation


# static fields
.field public static final BANNER_FIELD_NUMBER:I = 0x1

.field public static final CARD_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

.field public static final IMAGE_ONLY_FIELD_NUMBER:I = 0x3

.field public static final MODAL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field


# instance fields
.field private messageDetailsCase_:I

.field private messageDetails_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearMessageDetails()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearImageOnly()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearCard()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearBanner()V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->clearModal()V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->setImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->mergeImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V

    return-void
.end method

.method private clearBanner()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCard()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearImageOnly()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageDetails()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    return-void
.end method

.method private clearModal()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object v0
.end method

.method private mergeBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method private mergeCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method private mergeImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method private mergeModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/y;)Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[BLcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

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

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method

.method private setBanner(Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method private setCard(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method private setImageOnly(Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method

.method private setModal(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    invoke-direct {p1, p2}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-direct {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "messageDetails_"

    const-string v1, "messageDetailsCase_"

    const-class v2, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    const-class v3, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    const-class v4, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    const-class v5, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000"

    sget-object p3, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

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

.method public getBanner()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$BannerMessage;

    move-result-object v0

    return-object v0
.end method

.method public getCard()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    return-object v0
.end method

.method public getImageOnly()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ImageOnlyMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDetailsCase()Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->forNumber(I)Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v0

    return-object v0
.end method

.method public getModal()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasBanner()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCard()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImageOnly()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasModal()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
