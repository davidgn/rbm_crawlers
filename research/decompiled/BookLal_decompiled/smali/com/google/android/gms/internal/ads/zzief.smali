.class final Lcom/google/android/gms/internal/ads/zzief;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zziem;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zziem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzied;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzied;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzief;->zzb:Lcom/google/android/gms/internal/ads/zziem;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zziee;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicw;->zza()Lcom/google/android/gms/internal/ads/zzicw;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzibm;->zza:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zziem;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzief;->zzb:Lcom/google/android/gms/internal/ads/zziem;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zziee;-><init>([Lcom/google/android/gms/internal/ads/zziem;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzief;->zza:Lcom/google/android/gms/internal/ads/zziem;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzifg;
    .locals 8

    sget v0, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    const-class v0, Lcom/google/android/gms/internal/ads/zzidd;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzibm;->zza:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzief;->zza:Lcom/google/android/gms/internal/ads/zziem;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zziem;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zziel;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zziel;->zza()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/google/android/gms/internal/ads/zzibm;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziev;->zza()Lcom/google/android/gms/internal/ads/zzieu;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieb;->zza()Lcom/google/android/gms/internal/ads/zziea;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifi;->zzF()Lcom/google/android/gms/internal/ads/zzift;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zziel;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicq;->zza()Lcom/google/android/gms/internal/ads/zzico;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zziek;->zza()Lcom/google/android/gms/internal/ads/zziej;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzier;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziel;Lcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zziea;Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zziej;)Lcom/google/android/gms/internal/ads/zzier;

    move-result-object p1

    return-object p1

    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzibm;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifi;->zzF()Lcom/google/android/gms/internal/ads/zzift;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicq;->zza()Lcom/google/android/gms/internal/ads/zzico;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zziel;->zzb()Lcom/google/android/gms/internal/ads/zzieo;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzies;->zzh(Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zzieo;)Lcom/google/android/gms/internal/ads/zzies;

    move-result-object p1

    return-object p1
.end method
