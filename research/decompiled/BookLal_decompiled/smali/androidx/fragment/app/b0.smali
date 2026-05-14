.class public final Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/V;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/S;
    .locals 1

    iget p1, p0, Landroidx/fragment/app/b0;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj0/e;

    invoke-direct {p1}, Lj0/e;-><init>()V

    return-object p1

    :pswitch_0
    new-instance p1, Landroidx/fragment/app/c0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/fragment/app/c0;-><init>(Z)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
