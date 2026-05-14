.class public final LY0/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/ProfileActivity;I)V
    .locals 0

    iput p2, p0, LY0/y0;->a:I

    iput-object p1, p0, LY0/y0;->b:Lcom/booklal/booklal/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, LY0/y0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LY0/y0;->b:Lcom/booklal/booklal/ProfileActivity;

    invoke-virtual {p1}, Lcom/booklal/booklal/ProfileActivity;->onBackPressed()V

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/ProfilePhotoViewActivity;

    iget-object v1, p0, LY0/y0;->b:Lcom/booklal/booklal/ProfileActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "userKey"

    iget-object v2, v1, Lcom/booklal/booklal/ProfileActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/booklal/booklal/Edit_Profile_Activity;

    iget-object v1, p0, LY0/y0;->b:Lcom/booklal/booklal/ProfileActivity;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
