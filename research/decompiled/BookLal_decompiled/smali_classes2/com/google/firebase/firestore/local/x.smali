.class public final synthetic Lcom/google/firebase/firestore/local/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/firestore/local/x;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/x;->b:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/x;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/local/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/x;->c:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/x;->b:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->h(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/x;->c:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/x;->b:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    invoke-static {v1, v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->b(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
