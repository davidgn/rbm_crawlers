.class public final LC4/k;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LC4/k;->a:I

    iput-object p1, p0, LC4/k;->b:Ljava/lang/Object;

    iput-object p2, p0, LC4/k;->c:Ljava/lang/Object;

    iput-object p3, p0, LC4/k;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, LC4/k;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LO1/g;

    iget-object v1, p0, LC4/k;->d:Ljava/lang/Object;

    check-cast v1, LO1/n;

    iget-object v2, p0, LC4/k;->c:Ljava/lang/Object;

    check-cast v2, Lcom/booklal/booklal/ChatActivity;

    invoke-direct {v0, v2, v1}, LO1/g;-><init>(Lcom/booklal/booklal/ChatActivity;LO1/n;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, LC4/k;->b:Ljava/lang/Object;

    check-cast v1, LO1/e;

    iget-object v2, v1, LO1/e;->c:LY0/q0;

    invoke-virtual {v0, v2}, LO1/g;->setReactionSelectedListener(Lk4/l;)V

    iget-object v1, v1, LO1/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, LO1/d;

    const-string v7, "dismiss()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, LC4/k;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, LO1/e;

    const-class v5, LO1/e;

    const-string v6, "dismiss"

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, LO1/d;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, LO1/g;->setDismissListener(Lk4/a;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, LC4/k;->b:Ljava/lang/Object;

    check-cast v0, LC4/l;

    iget-object v0, v0, LC4/l;->b:LZ2/l;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LC4/k;->c:Ljava/lang/Object;

    check-cast v1, LC4/u;

    invoke-virtual {v1}, LC4/u;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, LC4/k;->d:Ljava/lang/Object;

    check-cast v2, LC4/a;

    iget-object v2, v2, LC4/a;->h:LC4/y;

    iget-object v2, v2, LC4/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LZ2/l;->o(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, LC4/k;->b:Ljava/lang/Object;

    check-cast v0, LC4/l;

    iget-object v0, v0, LC4/l;->b:LZ2/l;

    iget-object v1, p0, LC4/k;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v2, p0, LC4/k;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LZ2/l;->o(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, LZ3/i;->c0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    const-string v3, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
