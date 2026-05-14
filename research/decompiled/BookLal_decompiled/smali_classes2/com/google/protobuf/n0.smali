.class public final Lcom/google/protobuf/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/m0;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/i1;Lcom/google/protobuf/m1;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/m0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/protobuf/m0;-><init>(Lcom/google/protobuf/i1;Lcom/google/protobuf/m1;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/n0;->a:Lcom/google/protobuf/m0;

    iput-object p3, p0, Lcom/google/protobuf/n0;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/google/protobuf/m0;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/i1;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/B;->a(Lcom/google/protobuf/m1;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/m0;->b:Lcom/google/protobuf/m1;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/protobuf/B;->a(Lcom/google/protobuf/m1;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method
