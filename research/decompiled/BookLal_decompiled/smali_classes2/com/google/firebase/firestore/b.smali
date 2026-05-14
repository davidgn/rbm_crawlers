.class public final synthetic Lcom/google/firebase/firestore/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/firestore/DocumentReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/DocumentReference;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/firestore/b;->a:I

    iput-object p1, p0, Lcom/google/firebase/firestore/b;->b:Lcom/google/firebase/firestore/DocumentReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/firebase/firestore/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/firestore/b;->b:Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/DocumentReference;->b(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/firestore/b;->b:Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/CollectionReference;->d(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
