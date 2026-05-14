.class public final Lc1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/f;


# instance fields
.field public final a:Lf1/f;


# direct methods
.method public constructor <init>(Lf1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/m;->a:Lf1/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lc1/g;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Lc1/i;

    iget-object v1, p0, Lc1/m;->a:Lf1/f;

    invoke-direct {v0, p1, v1}, Lc1/i;-><init>(Ljava/io/InputStream;Lf1/f;)V

    return-object v0
.end method
