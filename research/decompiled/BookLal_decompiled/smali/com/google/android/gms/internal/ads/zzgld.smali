.class final Lcom/google/android/gms/internal/ads/zzgld;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzauh;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzauh;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzauh;[BZ)Lcom/google/android/gms/internal/ads/zzgld;
    .locals 12

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzauh;->zza()V

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zzb([B)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zzc(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zzd(JLjava/util/Optional;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauk;->zza()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgda;->zza([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v3, p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "-s"

    :goto_0
    add-int/lit8 v0, v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "3.856415045."

    invoke-static {v1, v0, p1, p2}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgld;

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzgld;-><init>(Lcom/google/android/gms/internal/ads/zzauh;JJLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final synthetic zzb(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzb:J

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zzd(JLjava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgda;->zza([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzc:J

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzauh;->zzd(JLjava/util/Optional;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgld;->zzd:Ljava/lang/String;

    return-object v0
.end method
