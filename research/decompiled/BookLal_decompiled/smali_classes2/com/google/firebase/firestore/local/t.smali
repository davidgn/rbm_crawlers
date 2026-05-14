.class public final synthetic Lcom/google/firebase/firestore/local/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/local/t;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/t;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/local/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/t;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->a(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/t;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->k(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/t;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->f(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/local/t;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->d(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
