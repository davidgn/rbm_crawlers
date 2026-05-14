.class public final LC4/c;
.super LQ4/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:LC4/d;


# direct methods
.method public constructor <init>(LQ4/y;LC4/d;)V
    .locals 0

    iput-object p2, p0, LC4/c;->b:LC4/d;

    invoke-direct {p0, p1}, LQ4/l;-><init>(LQ4/y;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, LC4/c;->b:LC4/d;

    iget-object v0, v0, LC4/d;->a:LE4/g;

    invoke-virtual {v0}, LE4/g;->close()V

    invoke-super {p0}, LQ4/l;->close()V

    return-void
.end method
