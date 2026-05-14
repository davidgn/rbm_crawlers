.class public final Lcom/google/firebase/firestore/proto/Target;
.super Lcom/google/protobuf/K;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/Target$Builder;,
        Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/K;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x6

.field public static final LAST_LIMBO_FREE_SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final LAST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/B0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/B0;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x5

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

.field private lastListenSequenceNumber_:J

.field private resumeToken_:Lcom/google/protobuf/m;

.field private snapshotVersion_:Lcom/google/protobuf/T0;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    const-class v1, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v1, v0}, Lcom/google/protobuf/K;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/K;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    sget-object v0, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearTargetType()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastListenSequenceNumber()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/firebase/firestore/proto/Target;LW2/y0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setQuery(LW2/y0;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/firebase/firestore/proto/Target;LW2/y0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeQuery(LW2/y0;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearQuery()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/google/firebase/firestore/proto/Target;LW2/w0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setDocuments(LW2/w0;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/google/firebase/firestore/proto/Target;LW2/w0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeDocuments(LW2/w0;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearDocuments()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/T0;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/T0;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastLimboFreeSnapshotVersion()V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/firestore/proto/Target;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setTargetId(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearTargetId()V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setSnapshotVersion(Lcom/google/protobuf/T0;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeSnapshotVersion(Lcom/google/protobuf/T0;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearSnapshotVersion()V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setResumeToken(Lcom/google/protobuf/m;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearResumeToken()V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/firestore/proto/Target;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->setLastListenSequenceNumber(J)V

    return-void
.end method

.method private clearDocuments()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLastLimboFreeSnapshotVersion()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    return-void
.end method

.method private clearLastListenSequenceNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-void
.end method

.method private clearQuery()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearResumeToken()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->getDefaultInstance()Lcom/google/firebase/firestore/proto/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method private clearSnapshotVersion()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    return-void
.end method

.method private clearTargetId()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return-void
.end method

.method private clearTargetType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method private mergeDocuments(LW2/w0;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    invoke-static {}, LW2/w0;->g()LW2/w0;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, LW2/w0;

    invoke-static {v0}, LW2/w0;->k(LW2/w0;)LW2/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, LW2/v0;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    return-void
.end method

.method private mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/T0;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    invoke-static {v0}, Lcom/google/protobuf/T0;->l(Lcom/google/protobuf/T0;)Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/S0;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    :goto_0
    return-void
.end method

.method private mergeQuery(LW2/y0;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    invoke-static {}, LW2/y0;->h()LW2/y0;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, LW2/y0;

    invoke-static {v0}, LW2/y0;->l(LW2/y0;)LW2/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, LW2/x0;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    return-void
.end method

.method private mergeSnapshotVersion(Lcom/google/protobuf/T0;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    invoke-static {v0}, Lcom/google/protobuf/T0;->l(Lcom/google/protobuf/T0;)Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/S0;

    invoke-virtual {p1}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/T0;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->createBuilder()Lcom/google/protobuf/F;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/K;->createBuilder(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseDelimitedFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/m;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/io/InputStream;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;Ljava/nio/ByteBuffer;Lcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[B)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/y;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/K;->parseFrom(Lcom/google/protobuf/K;[BLcom/google/protobuf/y;)Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/proto/Target;

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

    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->getParserForType()Lcom/google/protobuf/B0;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(LW2/w0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    return-void
.end method

.method private setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    return-void
.end method

.method private setLastListenSequenceNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-void
.end method

.method private setQuery(LW2/y0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    return-void
.end method

.method private setResumeToken(Lcom/google/protobuf/m;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/m;

    return-void
.end method

.method private setSnapshotVersion(Lcom/google/protobuf/T0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    return-void
.end method

.method private setTargetId(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/J;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/firebase/firestore/proto/Target;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/B0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/G;

    sget-object p3, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {p1, p3}, Lcom/google/protobuf/G;-><init>(Lcom/google/protobuf/K;)V

    sput-object p1, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/B0;

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
    sget-object p1, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/firebase/firestore/proto/Target$Builder;

    invoke-direct {p1, p2}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>(Lcom/google/firebase/firestore/proto/Target$1;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {p1}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "targetType_"

    const-string v1, "targetTypeCase_"

    const-string v2, "targetId_"

    const-string v3, "snapshotVersion_"

    const-string v4, "resumeToken_"

    const-string v5, "lastListenSequenceNumber_"

    const-class v6, LW2/y0;

    const-class v7, LW2/w0;

    const-string v8, "lastLimboFreeSnapshotVersion_"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002\t\u0003\n\u0004\u0002\u0005<\u0000\u0006<\u0000\u0007\t"

    sget-object p3, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

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

.method public getDocuments()LW2/w0;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, LW2/w0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/w0;->g()LW2/w0;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-wide v0
.end method

.method public getQuery()LW2/y0;
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, LW2/y0;

    return-object v0

    :cond_0
    invoke-static {}, LW2/y0;->h()LW2/y0;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/m;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/m;

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/T0;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/T0;->h()Lcom/google/protobuf/T0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/T0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuery()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSnapshotVersion()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/T0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
