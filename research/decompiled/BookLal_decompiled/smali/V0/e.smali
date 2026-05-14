.class public final LV0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:LV0/j;

.field public final b:LN2/o;


# direct methods
.method public constructor <init>(LV0/j;LN2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV0/e;->a:LV0/j;

    iput-object p2, p0, LV0/e;->b:LN2/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LV0/e;->a:LV0/j;

    iget-object v0, v0, LV0/h;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LV0/e;->b:LN2/o;

    invoke-static {v0}, LV0/h;->e(LN2/o;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LV0/h;->f:LW2/B;

    iget-object v2, p0, LV0/e;->a:LV0/j;

    invoke-virtual {v1, v2, p0, v0}, LW2/B;->e(LV0/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LV0/e;->a:LV0/j;

    invoke-static {v0}, LV0/h;->b(LV0/h;)V

    :cond_1
    return-void
.end method
