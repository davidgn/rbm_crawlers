.class final Lcom/google/android/gms/internal/ads/zzcoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfem;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzc:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzd:Lcom/google/android/gms/internal/ads/zzimd;

.field final zze:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzf:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcoc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzg:Lcom/google/android/gms/internal/ads/zzcoc;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzilv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzilu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzilv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzilu;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzby:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzbz:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfhd;->zzc(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzfhd;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffk;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzffk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzaf:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkf;->zza()Lcom/google/android/gms/internal/ads/zzfkf;

    move-result-object v5

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzi:Lcom/google/android/gms/internal/ads/zzimd;

    move-object v0, p2

    move-object v2, v8

    move-object v4, v7

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffm;->zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzffm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zze:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzp:Lcom/google/android/gms/internal/ads/zzimd;

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffs;->zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzffr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffr;

    return-object v0
.end method
