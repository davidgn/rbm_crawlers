.class public final synthetic Lu4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/G;


# instance fields
.field public final synthetic a:Lu4/d;

.field public final synthetic b:Lt4/t0;


# direct methods
.method public synthetic constructor <init>(Lu4/d;Lt4/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/c;->a:Lu4/d;

    iput-object p2, p0, Lu4/c;->b:Lt4/t0;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lu4/c;->a:Lu4/d;

    iget-object v0, v0, Lu4/d;->c:Landroid/os/Handler;

    iget-object v1, p0, Lu4/c;->b:Lt4/t0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
