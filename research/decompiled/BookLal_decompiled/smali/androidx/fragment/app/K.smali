.class public abstract Landroidx/fragment/app/K;
.super Landroidx/fragment/app/H;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/F;

.field public final b:Landroidx/fragment/app/F;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/Z;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/F;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/fragment/app/Z;

    invoke-direct {v1}, Landroidx/fragment/app/Y;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/K;->d:Landroidx/fragment/app/Z;

    iput-object p1, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/F;

    iput-object p1, p0, Landroidx/fragment/app/K;->b:Landroidx/fragment/app/F;

    iput-object v0, p0, Landroidx/fragment/app/K;->c:Landroid/os/Handler;

    return-void
.end method
