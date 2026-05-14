.class public final Lu0/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LL/c;


# instance fields
.field public a:I

.field public b:LM/w;

.field public c:LM/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LL/c;-><init>(I)V

    sput-object v0, Lu0/g0;->d:LL/c;

    return-void
.end method

.method public static a()Lu0/g0;
    .locals 1

    sget-object v0, Lu0/g0;->d:LL/c;

    invoke-virtual {v0}, LL/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/g0;

    if-nez v0, :cond_0

    new-instance v0, Lu0/g0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
