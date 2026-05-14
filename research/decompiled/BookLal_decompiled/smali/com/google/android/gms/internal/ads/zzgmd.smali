.class final synthetic Lcom/google/android/gms/internal/ads/zzgmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgmf;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgeu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgmf;Lcom/google/android/gms/internal/ads/zzgeu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmd;->zza:Lcom/google/android/gms/internal/ads/zzgmf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmd;->zzb:Lcom/google/android/gms/internal/ads/zzgeu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmd;->zza:Lcom/google/android/gms/internal/ads/zzgmf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmd;->zzb:Lcom/google/android/gms/internal/ads/zzgeu;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzi(Lcom/google/android/gms/internal/ads/zzgeu;Ljava/util/List;)LN2/o;

    move-result-object p1

    return-object p1
.end method
