.class public final synthetic Lcom/google/firebase/firestore/local/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/SQLiteSchema;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteSchema;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/local/E;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/local/E;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->o(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->b(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->j(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->q(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->n(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->k(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->f(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/firebase/firestore/local/E;->b:Lcom/google/firebase/firestore/local/SQLiteSchema;

    invoke-static {v0}, Lcom/google/firebase/firestore/local/SQLiteSchema;->a(Lcom/google/firebase/firestore/local/SQLiteSchema;)V

    return-void

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
