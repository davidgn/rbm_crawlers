.class public abstract Lt4/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt4/B;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Ly4/w;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lt4/x;->n:Lt4/x;

    goto :goto_2

    :cond_1
    sget-object v0, Lt4/E;->a:LA4/e;

    sget-object v0, Ly4/o;->a:Lt4/i0;

    move-object v1, v0

    check-cast v1, Lu4/d;

    iget-object v1, v1, Lu4/d;->f:Lu4/d;

    instance-of v1, v0, Lt4/B;

    if-nez v1, :cond_2

    sget-object v0, Lt4/x;->n:Lt4/x;

    goto :goto_2

    :cond_2
    check-cast v0, Lt4/B;

    :goto_2
    sput-object v0, Lt4/y;->a:Lt4/B;

    return-void
.end method
