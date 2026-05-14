.class public final synthetic Lcom/google/firebase/inappmessaging/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field public final synthetic c:LZ2/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;I)V
    .locals 0

    iput p3, p0, Lcom/google/firebase/inappmessaging/internal/h;->a:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/h;->b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/h;->c:LZ2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/h;->b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/h;->c:LZ2/d;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->e(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/h;->c:LZ2/d;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/h;->b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-static {v1, v0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->f(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
