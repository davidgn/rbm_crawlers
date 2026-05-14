.class public final Ll/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll/B0;


# direct methods
.method public synthetic constructor <init>(Ll/B0;I)V
    .locals 0

    iput p2, p0, Ll/z0;->a:I

    iput-object p1, p0, Ll/z0;->b:Ll/B0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ll/z0;->b:Ll/B0;

    iget v1, p0, Ll/z0;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Ll/B0;->c:Ll/q0;

    if-eqz v1, :cond_0

    sget-object v2, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    iget-object v2, v0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, v0, Ll/B0;->c:Ll/q0;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget v2, v0, Ll/B0;->r:I

    if-gt v1, v2, :cond_0

    iget-object v1, v0, Ll/B0;->D:Ll/z;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v0}, Ll/B0;->i()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v0, Ll/B0;->c:Ll/q0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ll/q0;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
