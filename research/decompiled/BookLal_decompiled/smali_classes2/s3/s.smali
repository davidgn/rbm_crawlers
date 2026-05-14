.class public final Ls3/s;
.super Lj3/T;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "round_robin"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(Lj3/i;)Lj3/S;
    .locals 1

    new-instance v0, Ls3/r;

    invoke-direct {v0, p1}, Ls3/r;-><init>(Lj3/i;)V

    return-object v0
.end method

.method public e(Ljava/util/Map;)Lj3/i0;
    .locals 1

    new-instance p1, Lj3/i0;

    const-string v0, "no service config"

    invoke-direct {p1, v0}, Lj3/i0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
