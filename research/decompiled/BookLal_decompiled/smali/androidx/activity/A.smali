.class public final Landroidx/activity/A;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/activity/G;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/G;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/A;->a:I

    iput-object p1, p0, Landroidx/activity/A;->b:Landroidx/activity/G;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/activity/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/activity/A;->b:Landroidx/activity/G;

    invoke-virtual {v0}, Landroidx/activity/G;->c()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/A;->b:Landroidx/activity/G;

    invoke-virtual {v0}, Landroidx/activity/G;->b()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/activity/A;->b:Landroidx/activity/G;

    invoke-virtual {v0}, Landroidx/activity/G;->c()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
