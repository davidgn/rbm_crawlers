.class public final LY0/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LY0/L0;

.field public final synthetic c:LY0/x0;


# direct methods
.method public synthetic constructor <init>(LY0/x0;LY0/L0;I)V
    .locals 0

    iput p3, p0, LY0/J0;->a:I

    iput-object p1, p0, LY0/J0;->c:LY0/x0;

    iput-object p2, p0, LY0/J0;->b:LY0/L0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, LY0/J0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/J0;->b:LY0/L0;

    iget-object p1, p1, LY0/L0;->e:Ljava/lang/String;

    iget-object v0, p0, LY0/J0;->c:LY0/x0;

    invoke-static {v0, p1}, LY0/x0;->h(LY0/x0;Ljava/lang/String;)Lh/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, LY0/J0;->c:LY0/x0;

    iget-object v1, v0, LY0/x0;->f:Landroid/content/Context;

    const-class v2, Lcom/booklal/booklal/StatsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, LY0/J0;->b:LY0/L0;

    iget-object v1, v1, LY0/L0;->e:Ljava/lang/String;

    const-string v2, "bookKey"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, LY0/x0;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, LY0/J0;->c:LY0/x0;

    iget-object v1, v0, LY0/x0;->f:Landroid/content/Context;

    const-class v2, Lcom/booklal/booklal/LookBeforeEditBookDetailsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, LY0/J0;->b:LY0/L0;

    iget-object v1, v1, LY0/L0;->e:Ljava/lang/String;

    const-string v2, "bookKey"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, LY0/x0;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
