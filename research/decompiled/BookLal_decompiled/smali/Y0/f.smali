.class public final LY0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/AllChatsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/AllChatsActivity;I)V
    .locals 0

    iput p2, p0, LY0/f;->a:I

    iput-object p1, p0, LY0/f;->b:Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, LY0/f;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/f;->b:Lcom/booklal/booklal/AllChatsActivity;

    iget-object v0, p1, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->c()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/booklal/booklal/AllChatsActivity;->o:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->r()V

    :goto_0
    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, p0, LY0/f;->b:Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ProfileActivity;

    iget-object v1, p0, LY0/f;->b:Lcom/booklal/booklal/AllChatsActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
