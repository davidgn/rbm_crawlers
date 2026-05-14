.class public final Lp/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lp/f;


# direct methods
.method public constructor <init>(Lp/f;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/d;->e:Lp/f;

    iput p2, p0, Lp/d;->a:I

    iput-object p3, p0, Lp/d;->b:Landroid/net/Uri;

    iput-boolean p4, p0, Lp/d;->c:Z

    iput-object p5, p0, Lp/d;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lp/d;->e:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-boolean v1, p0, Lp/d;->c:Z

    iget-object v2, p0, Lp/d;->d:Landroid/os/Bundle;

    iget v3, p0, Lp/d;->a:I

    iget-object v4, p0, Lp/d;->b:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4, v1, v2}, Lp/a;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return-void
.end method
