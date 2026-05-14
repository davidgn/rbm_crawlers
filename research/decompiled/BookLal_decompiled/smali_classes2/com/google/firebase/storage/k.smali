.class public final synthetic Lcom/google/firebase/storage/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/storage/TaskListenerImpl;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/firebase/storage/StorageTask$ProvideError;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/storage/k;->a:I

    iput-object p1, p0, Lcom/google/firebase/storage/k;->b:Lcom/google/firebase/storage/TaskListenerImpl;

    iput-object p2, p0, Lcom/google/firebase/storage/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/storage/k;->d:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/firebase/storage/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/storage/k;->d:Lcom/google/firebase/storage/StorageTask$ProvideError;

    iget-object v1, p0, Lcom/google/firebase/storage/k;->b:Lcom/google/firebase/storage/TaskListenerImpl;

    iget-object v2, p0, Lcom/google/firebase/storage/k;->c:Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/storage/TaskListenerImpl;->a(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/storage/k;->d:Lcom/google/firebase/storage/StorageTask$ProvideError;

    iget-object v1, p0, Lcom/google/firebase/storage/k;->b:Lcom/google/firebase/storage/TaskListenerImpl;

    iget-object v2, p0, Lcom/google/firebase/storage/k;->c:Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/storage/TaskListenerImpl;->b(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
