.class public final Lcom/google/firebase/firestore/proto/MaybeDocument;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;,
        Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/K;",
        "Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x2

.field public static final HAS_COMMITTED_MUTATIONS_FIELD_NUMBER:I = 0x4

.field public static final NO_DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_DOCUMENT_FIELD_NUMBER:I = 0x3


# instance fields
.field private documentTypeCase_:I

.field private documentType_:Ljava/lang/Object;

.field private hasCommittedMutations_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    const-class v1, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/firestore/proto/MaybeDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->clearDocumentType()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/firebase/firestore/proto/MaybeDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->clearUnknownDocument()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/firebase/firestore/proto/MaybeDocument;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setHasCommittedMutations(Z)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/firebase/firestore/proto/MaybeDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->clearHasCommittedMutations()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->mergeNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/firestore/proto/MaybeDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->clearNoDocument()V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/firestore/proto/MaybeDocument;LW2/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setDocument(LW2/q;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/firestore/proto/MaybeDocument;LW2/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->mergeDocument(LW2/q;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/firestore/proto/MaybeDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->clearDocument()V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->mergeUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    return-void
.end method

.method private clearDocument()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDocumentType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    return-void
.end method

.method private clearHasCommittedMutations()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    return-void
.end method

.method private clearNoDocument()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnknownDocument()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object v0
.end method

.method private mergeDocument(LW2/q;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    invoke-static {}, LW2/q;->i()LW2/q;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, LW2/q;

    invoke-static {v0}, LW2/q;->m(LW2/q;)LW2/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, LW2/o;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method private mergeNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->newBuilder(Lcom/google/firebase/firestore/proto/NoDocument;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method private mergeUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->newBuilder(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/MaybeDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[BLcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/MaybeDocument;

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

    sget-object v0, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(LW2/q;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method private setHasCommittedMutations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    return-void
.end method

.method private setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    return-void
.end method

.method private setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

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
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/firestore/proto/MaybeDocument;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    invoke-direct {p1, p2}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;-><init>(Lcom/google/firebase/firestore/proto/MaybeDocument$1;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-direct {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "documentType_"

    const-string v1, "documentTypeCase_"

    const-class v2, Lcom/google/firebase/firestore/proto/NoDocument;

    const-class v3, LW2/q;

    const-class v4, Lcom/google/firebase/firestore/proto/UnknownDocument;

    const-string v5, "hasCommittedMutations_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004\u0007"

    sget-object p3, Lcom/google/firebase/firestore/proto/MaybeDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/MaybeDocument;

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

.method public getDocument()LW2/q;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, LW2/q;

    return-object v0

    :cond_0
    invoke-static {}, LW2/q;->i()LW2/q;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getHasCommittedMutations()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasCommittedMutations_:Z

    return v0
.end method

.method public getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNoDocument()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUnknownDocument()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
