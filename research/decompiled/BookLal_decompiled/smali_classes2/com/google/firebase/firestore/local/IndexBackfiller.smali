.class public Lcom/google/firebase/firestore/local/IndexBackfiller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;
    }
.end annotation


# static fields
.field private static final INITIAL_BACKFILL_DELAY_MS:J

.field private static final LOG_TAG:Ljava/lang/String; = "IndexBackfiller"

.field private static final MAX_DOCUMENTS_TO_PROCESS:I = 0x32

.field private static final REGULAR_BACKFILL_DELAY_MS:J


# instance fields
.field private final indexManagerOfCurrentUser:LJ2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/k;"
        }
    .end annotation
.end field

.field private final localDocumentsViewOfCurrentUser:LJ2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/k;"
        }
    .end annotation
.end field

.field private maxDocumentsToProcess:I

.field private final persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private final scheduler:Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->INITIAL_BACKFILL_DELAY_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->REGULAR_BACKFILL_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/util/AsyncQueue;LJ2/k;LJ2/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/local/Persistence;",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "LJ2/k;",
            "LJ2/k;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 5
    iput v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    .line 6
    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 7
    new-instance p1, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller;Lcom/google/firebase/firestore/util/AsyncQueue;)V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->scheduler:Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->indexManagerOfCurrentUser:LJ2/k;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->localDocumentsViewOfCurrentUser:LJ2/k;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V
    .locals 3

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/firestore/local/b;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/google/firebase/firestore/local/b;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    .line 2
    new-instance v1, Lcom/google/firebase/firestore/local/b;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2}, Lcom/google/firebase/firestore/local/b;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/firestore/local/IndexBackfiller;-><init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/util/AsyncQueue;LJ2/k;LJ2/k;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/firestore/local/IndexBackfiller;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->lambda$backfill$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()J
    .locals 2

    sget-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->INITIAL_BACKFILL_DELAY_MS:J

    return-wide v0
.end method

.method public static synthetic access$100()J
    .locals 2

    sget-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->REGULAR_BACKFILL_DELAY_MS:J

    return-wide v0
.end method

.method private getNewOffset(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Lcom/google/firebase/firestore/local/LocalDocumentsResult;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 4

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    invoke-static {v2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->fromDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I

    move-result v3

    if-lez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getBatchId()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$backfill$0()Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->writeIndexEntries()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private writeEntriesForCollectionGroup(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->indexManagerOfCurrentUser:LJ2/k;

    invoke-interface {v0}, LJ2/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/IndexManager;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->localDocumentsViewOfCurrentUser:LJ2/k;

    invoke-interface {v1}, LJ2/k;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/LocalDocumentsView;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->getMinOffset(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getNextDocuments(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;I)Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/local/IndexManager;->updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    invoke-direct {p0, v2, p2}, Lcom/google/firebase/firestore/local/IndexBackfiller;->getNewOffset(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Lcom/google/firebase/firestore/local/LocalDocumentsResult;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "IndexBackfiller"

    const-string v4, "Updating offset: %s"

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/firestore/local/IndexManager;->updateCollectionGroup(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)V

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result p1

    return p1
.end method

.method private writeIndexEntries()I
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->indexManagerOfCurrentUser:LJ2/k;

    invoke-interface {v0}, LJ2/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/IndexManager;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget v2, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    :goto_0
    if-lez v2, :cond_1

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/IndexManager;->getNextCollectionGroupToUpdate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "IndexBackfiller"

    const-string v6, "Processing collection: %s"

    invoke-static {v5, v6, v4}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3, v2}, Lcom/google/firebase/firestore/local/IndexBackfiller;->writeEntriesForCollectionGroup(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    sub-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public backfill()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/o;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/firestore/local/o;-><init>(Ljava/lang/Object;I)V

    const-string v2, "Backfill Indexes"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScheduler()Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->scheduler:Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    return-object v0
.end method

.method public setMaxDocumentsToProcess(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    return-void
.end method
