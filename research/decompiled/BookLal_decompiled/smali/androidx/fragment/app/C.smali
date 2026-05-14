.class public final synthetic Landroidx/fragment/app/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/F;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/F;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/C;->a:I

    iput-object p1, p0, Landroidx/fragment/app/C;->b:Landroidx/fragment/app/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/C;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    iget-object p1, p0, Landroidx/fragment/app/C;->b:Landroidx/fragment/app/F;

    iget-object p1, p1, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {p1}, Landroidx/fragment/app/J;->a()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p1, p0, Landroidx/fragment/app/C;->b:Landroidx/fragment/app/F;

    iget-object p1, p1, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    invoke-virtual {p1}, Landroidx/fragment/app/J;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
