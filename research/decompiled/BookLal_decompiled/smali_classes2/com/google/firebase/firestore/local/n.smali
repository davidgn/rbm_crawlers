.class public final synthetic Lcom/google/firebase/firestore/local/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/local/n;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/local/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->b(Ljava/util/HashSet;Landroid/database/Cursor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Boolean;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteOverlayMigrationManager;->c([Ljava/lang/Boolean;Landroid/database/Cursor;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->c(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/database/Cursor;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->a(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;Landroid/database/Cursor;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/util/Consumer;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->b(Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->b(Ljava/util/HashMap;Landroid/database/Cursor;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/firebase/firestore/local/n;->b:Ljava/lang/Object;

    check-cast v0, [J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;->a([JLjava/lang/Long;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
