.class public final synthetic Lcom/google/firebase/firestore/local/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/local/c;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/local/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->a(Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;->a(Lcom/google/firebase/firestore/local/LruGarbageCollector$GCScheduler;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;->a(Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
