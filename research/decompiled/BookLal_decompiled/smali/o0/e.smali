.class public abstract Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lo0/d;
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdServicesInfo.version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Lm0/a;->a:Lm0/a;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_0

    invoke-virtual {v2}, Lm0/a;->a()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MeasurementManager"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v4, :cond_1

    invoke-virtual {v2}, Lm0/a;->a()I

    move-result v3

    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    if-lt v3, v0, :cond_2

    new-instance v0, Lq0/b;

    invoke-direct {v0, p0}, Lq0/b;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    new-instance v1, Lo0/d;

    invoke-direct {v1, v0}, Lo0/d;-><init>(Lq0/b;)V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public abstract b(Landroid/net/Uri;Landroid/view/InputEvent;)LN2/o;
.end method
