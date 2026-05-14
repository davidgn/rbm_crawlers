.class public final Landroidx/fragment/app/u;
.super Landroidx/fragment/app/z;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Ly0/d;

    invoke-virtual {v1}, Ly0/d;->a()V

    invoke-static {v0}, Landroidx/lifecycle/M;->d(Ly0/e;)V

    return-void
.end method
