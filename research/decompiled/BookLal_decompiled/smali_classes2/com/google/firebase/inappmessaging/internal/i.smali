.class public final synthetic Lcom/google/firebase/inappmessaging/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/inappmessaging/internal/i;->a:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/i;->b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/i;->b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->c(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/i;->b:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    check-cast p1, LZ2/d;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->a(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
