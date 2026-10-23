"""
VideoLearn AI — Video Pedagogical Engine & Cyber Defense System.
Provides package-level exports for multi-platform video ingestion, 7-layer security screening,
timecoded subtitle generation, multi-format courseware synthesis, and grounded AI tutoring.
"""

__version__ = "2.0.4"

try:
    from .security import SecurityGuard
    from .media_ingest import MediaIngestor
    from .transcriber import AudioTranscriber
    from .courseware_engine import CoursewareEngine
    from .pptx_generator import PurePPTXBuilder
    from .tutor import AcademicTutor
    from .agent import VideoLearnOrchestrator, orchestrator
except ImportError:
    from security import SecurityGuard
    from media_ingest import MediaIngestor
    from transcriber import AudioTranscriber
    from courseware_engine import CoursewareEngine
    from pptx_generator import PurePPTXBuilder
    from tutor import AcademicTutor
    from agent import VideoLearnOrchestrator, orchestrator

__all__ = [
    "__version__",
    "SecurityGuard",
    "MediaIngestor",
    "AudioTranscriber",
    "CoursewareEngine",
    "PurePPTXBuilder",
    "AcademicTutor",
    "VideoLearnOrchestrator",
    "orchestrator",
]
