.class public final enum LC4/M;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:LC4/M;

.field public static final enum c:LC4/M;

.field public static final enum d:LC4/M;

.field public static final enum e:LC4/M;

.field public static final enum f:LC4/M;

.field public static final synthetic l:[LC4/M;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LC4/M;

    const-string v1, "TLSv1.3"

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LC4/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LC4/M;->b:LC4/M;

    new-instance v1, LC4/M;

    const-string v2, "TLSv1.2"

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LC4/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LC4/M;->c:LC4/M;

    new-instance v2, LC4/M;

    const-string v3, "TLSv1.1"

    const-string v4, "TLS_1_1"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LC4/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LC4/M;->d:LC4/M;

    new-instance v3, LC4/M;

    const-string v4, "TLSv1"

    const-string v5, "TLS_1_0"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, LC4/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, LC4/M;->e:LC4/M;

    new-instance v4, LC4/M;

    const-string v5, "SSLv3"

    const-string v6, "SSL_3_0"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, LC4/M;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, LC4/M;->f:LC4/M;

    filled-new-array {v0, v1, v2, v3, v4}, [LC4/M;

    move-result-object v0

    sput-object v0, LC4/M;->l:[LC4/M;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LC4/M;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC4/M;
    .locals 1

    const-class v0, LC4/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LC4/M;

    return-object p0
.end method

.method public static values()[LC4/M;
    .locals 1

    sget-object v0, LC4/M;->l:[LC4/M;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC4/M;

    return-object v0
.end method
