.class public final synthetic Lcom/google/firebase/inappmessaging/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;
.implements LE3/c;
.implements LE3/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/inappmessaging/internal/j;->a:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/j;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, LZ2/j;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->v(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LZ2/j;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, LZ2/j;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->B(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LZ2/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, LY2/e;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->c(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LY2/e;)Lz3/h;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->e(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)LT4/a;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/j;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, LY2/e;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->r(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;LY2/e;)Z

    move-result p1

    return p1
.end method
