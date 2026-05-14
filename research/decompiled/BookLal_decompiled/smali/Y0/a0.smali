.class public final LY0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/Edit_Profile_Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Edit_Profile_Activity;I)V
    .locals 0

    iput p2, p0, LY0/a0;->a:I

    iput-object p1, p0, LY0/a0;->b:Lcom/booklal/booklal/Edit_Profile_Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    iget-object v0, p0, LY0/a0;->b:Lcom/booklal/booklal/Edit_Profile_Activity;

    iget v1, p0, LY0/a0;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Lcom/booklal/booklal/Edit_Profile_Activity;->onBackPressed()V

    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/booklal/booklal/Edit_Profile_Activity;->onBackPressed()V

    return-void

    :pswitch_1
    sget v1, Lcom/booklal/booklal/Edit_Profile_Activity;->D:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "Choose from Gallery"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cancel"

    aput-object v2, v1, p1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Add Photo"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, LY0/Y;

    invoke-direct {v3, v0, v1, p1}, LY0/Y;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
