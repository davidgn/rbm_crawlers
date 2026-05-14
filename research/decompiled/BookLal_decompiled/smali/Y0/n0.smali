.class public final synthetic LY0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LC4/o;


# direct methods
.method public synthetic constructor <init>(LC4/o;I)V
    .locals 0

    iput p2, p0, LY0/n0;->a:I

    iput-object p1, p0, LY0/n0;->b:LC4/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, LY0/n0;->b:LC4/o;

    iget v2, p0, LY0/n0;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    iget-object v1, v1, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v1}, Lcom/booklal/booklal/MainActivity;->l()V

    const-string v2, "Network error"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    sget-object v2, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    iget-object v1, v1, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v1}, Lcom/booklal/booklal/MainActivity;->l()V

    const-string v2, "Verification error"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    sget-object v2, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    iget-object v1, v1, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v1}, Lcom/booklal/booklal/MainActivity;->l()V

    const-string v2, "Verification failed"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
