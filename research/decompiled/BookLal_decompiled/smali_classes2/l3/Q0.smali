.class public final Ll3/Q0;
.super Lj3/H;
.source "SourceFile"


# instance fields
.field public final b:Ll3/R0;


# direct methods
.method public constructor <init>(Ll3/R0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/Q0;->b:Ll3/R0;

    return-void
.end method


# virtual methods
.method public final a()Lj3/G;
    .locals 3

    iget-object v0, p0, Ll3/Q0;->b:Ll3/R0;

    const-string v1, "config"

    invoke-static {v0, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lj3/G;

    sget-object v2, Lj3/r0;->e:Lj3/r0;

    invoke-direct {v1, v2, v0}, Lj3/G;-><init>(Lj3/r0;Ljava/lang/Object;)V

    return-object v1
.end method
