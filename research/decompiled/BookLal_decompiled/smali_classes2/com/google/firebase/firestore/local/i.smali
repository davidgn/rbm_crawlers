.class public final synthetic Lcom/google/firebase/firestore/local/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/local/LocalStore;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/firestore/local/i;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/local/i;->b:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/i;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/firestore/local/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/local/i;->b:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/m;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->r(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/protobuf/m;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/local/i;->b:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->g(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/BundleMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
