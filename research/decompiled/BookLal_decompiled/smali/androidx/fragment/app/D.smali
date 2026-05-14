.class public final synthetic Landroidx/fragment/app/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/F;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/D;->a:Landroidx/fragment/app/F;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/p;)V
    .locals 2

    iget-object p1, p0, Landroidx/fragment/app/D;->a:Landroidx/fragment/app/F;

    iget-object p1, p1, Landroidx/fragment/app/F;->mFragments:Landroidx/fragment/app/J;

    iget-object p1, p1, Landroidx/fragment/app/J;->a:Landroidx/fragment/app/E;

    iget-object v0, p1, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/Y;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/H;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
