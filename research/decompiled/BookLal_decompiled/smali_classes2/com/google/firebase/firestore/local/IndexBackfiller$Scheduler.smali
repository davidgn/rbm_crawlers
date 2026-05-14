.class public Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/local/Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/IndexBackfiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scheduler"
.end annotation


# instance fields
.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private backfillTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

.field final synthetic this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/local/IndexBackfiller;Lcom/google/firebase/firestore/util/AsyncQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->lambda$scheduleBackfill$0()V

    return-void
.end method

.method private synthetic lambda$scheduleBackfill$0()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->this$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->backfill()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "IndexBackfiller"

    const-string v2, "Documents written: %s"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/firebase/firestore/local/IndexBackfiller;->access$100()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->scheduleBackfill(J)V

    return-void
.end method

.method private scheduleBackfill(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    sget-object v1, Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;->INDEX_BACKFILL:Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;

    new-instance v2, Lcom/google/firebase/firestore/local/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/firebase/firestore/local/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAfterDelay(Lcom/google/firebase/firestore/util/AsyncQueue$TimerId;JLjava/lang/Runnable;)Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->backfillTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/firestore/local/IndexBackfiller;->access$000()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->scheduleBackfill(J)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->backfillTask:Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;->cancel()V

    :cond_0
    return-void
.end method
