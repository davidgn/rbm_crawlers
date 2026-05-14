.class public final synthetic Lcom/google/firebase/firestore/local/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/firestore/local/u;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/firebase/firestore/local/u;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->d(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/core/Target;

    invoke-static {v1, v2, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->b(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;Landroid/database/Cursor;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v0, [I

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-static {v1, v2, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->d(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[ILandroid/database/Cursor;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    invoke-static {v2, v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->d(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/HashMap;Landroid/database/Cursor;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    invoke-static {v2, v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->i(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/HashSet;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;

    invoke-static {v2, v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;->a(Lcom/google/firebase/firestore/local/SQLiteLruReferenceDelegate;[ILjava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    :pswitch_5
    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/u;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/u;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/u;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->a(Ljava/util/TreeSet;Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/DocumentKey;Landroid/database/Cursor;)V

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
