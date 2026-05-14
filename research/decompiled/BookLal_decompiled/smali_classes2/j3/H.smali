.class public abstract Lj3/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/a;

    const-string v1, "internal:io.grpc.config-selector"

    invoke-direct {v0, v1}, Lj3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj3/H;->a:Lj3/a;

    return-void
.end method


# virtual methods
.method public abstract a()Lj3/G;
.end method
