.class public final Lj3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj3/o;

.field public final b:Z


# direct methods
.method public constructor <init>(Lj3/o;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decompressor"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj3/w;->a:Lj3/o;

    iput-boolean p2, p0, Lj3/w;->b:Z

    return-void
.end method
