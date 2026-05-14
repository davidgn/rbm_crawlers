.class public final synthetic Lcom/google/firebase/inappmessaging/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;
.implements LE3/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LY2/e;


# direct methods
.method public synthetic constructor <init>(LY2/e;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/inappmessaging/internal/l;->a:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/l;->b:LY2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/l;->b:LY2/e;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->G(LY2/e;Ljava/lang/Boolean;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/l;->b:LY2/e;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->C(LY2/e;Ljava/lang/Boolean;)LY2/e;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/l;->b:LY2/e;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->o(LY2/e;Ljava/lang/Boolean;)LY2/e;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
