.class public interface abstract Lcom/microsoft/applications/events/ILogger;
.super Ljava/lang/Object;
.source "ILogger.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract SetContext(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
.end method

.method public abstract getNativeILoggerPtr()J
.end method

.method public abstract getSemanticContext()Lcom/microsoft/applications/events/ISemanticContext;
.end method

.method public abstract logAggregatedMetric(Lcom/microsoft/applications/events/AggregatedMetricData;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logAggregatedMetric(Ljava/lang/String;JJLcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logAppLifecycle(Lcom/microsoft/applications/events/AppLifecycleState;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logEvent(Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logEvent(Ljava/lang/String;)V
.end method

.method public abstract logFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logPageAction(Lcom/microsoft/applications/events/PageActionData;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logPageAction(Ljava/lang/String;Lcom/microsoft/applications/events/ActionType;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logPageView(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logSampledMetric(Ljava/lang/String;DLjava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logSampledMetric(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logSession(Lcom/microsoft/applications/events/SessionState;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logTrace(Lcom/microsoft/applications/events/TraceLevel;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract logUserState(Lcom/microsoft/applications/events/UserState;JLcom/microsoft/applications/events/EventProperties;)V
.end method

.method public abstract setContext(Ljava/lang/String;D)V
.end method

.method public abstract setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setContext(Ljava/lang/String;I)V
.end method

.method public abstract setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setContext(Ljava/lang/String;J)V
.end method

.method public abstract setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/util/UUID;)V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setContext(Ljava/lang/String;Z)V
.end method

.method public abstract setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)V
.end method

.method public abstract setLevel(Lcom/microsoft/applications/events/DiagnosticLevel;)V
.end method

.method public abstract setParentContext(Lcom/microsoft/applications/events/ISemanticContext;)V
.end method
