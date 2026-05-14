.class public final synthetic Lcom/google/firebase/firestore/local/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/local/v;->a:I

    iput-object p2, p0, Lcom/google/firebase/firestore/local/v;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/v;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/local/v;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/util/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->e(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/util/Consumer;Landroid/database/Cursor;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/v;->b:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Lcom/google/firebase/firestore/local/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->m([ZLandroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->d(Lcom/google/firebase/firestore/local/SQLiteSchema;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v0, p0, Lcom/google/firebase/firestore/local/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->h(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/local/v;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/v;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/local/SQLiteIndexManager;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->c(Lcom/google/firebase/firestore/local/SQLiteIndexManager;Ljava/util/HashMap;Landroid/database/Cursor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
