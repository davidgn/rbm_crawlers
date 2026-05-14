.class public final synthetic LO1/d;
.super Lkotlin/jvm/internal/h;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p7, p0, LO1/d;->a:I

    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/g;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LO1/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/G;

    invoke-virtual {v0}, Landroidx/activity/G;->e()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/G;

    invoke-virtual {v0}, Landroidx/activity/G;->e()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    check-cast v0, LO1/e;

    invoke-virtual {v0}, LO1/e;->dismiss()V

    sget-object v0, LY3/j;->a:LY3/j;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
