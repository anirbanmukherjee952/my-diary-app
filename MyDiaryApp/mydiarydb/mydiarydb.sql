-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 08:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydiarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `diary`
--

CREATE TABLE `diary` (
  `user_id` int(11) NOT NULL,
  `entry_ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_content` mediumtext NOT NULL DEFAULT '<b>Blank entry</b>'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diary`
--

INSERT INTO `diary` (`user_id`, `entry_ts`, `entry_content`) VALUES
(1, '2020-06-23 07:11:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ligula mauris, pharetra ac purus sit amet, commodo vestibulum nisi. Cras semper odio at ligula imperdiet consequat. Aenean elementum nisi a bibendum consectetur. Mauris maximus eros eget interdum elementum. Maecenas lacinia venenatis nisl quis sagittis. Cras aliquam molestie egestas. Donec eu justo ligula.'),
(1, '2020-06-23 07:11:19', 'Quisque euismod diam sit amet ultrices aliquam. Pellentesque semper aliquam lectus, in venenatis ipsum blandit eget. Vestibulum vel erat condimentum, molestie leo eu, fermentum turpis. Phasellus et dui non neque venenatis scelerisque rhoncus at leo. Sed bibendum sem velit, ut mollis tortor pellentesque quis. In hac habitasse platea dictumst. Nulla gravida nec enim sed gravida. Nunc nec varius dolor, eget malesuada leo. In nec neque tempus, ultricies arcu non, finibus purus. Phasellus sed eleifend odio, in finibus risus.'),
(1, '2020-06-23 10:34:11', 'Sed faucibus ex neque, eget sodales nibh placerat quis. Ut pharetra urna ut lacus gravida, sit amet porta justo posuere. Nam imperdiet nisl vitae molestie placerat. Curabitur bibendum ut est quis porttitor. Vivamus ac sapien odio. Vestibulum at ornare ligula, at mattis justo. In hendrerit ac purus at accumsan. Nullam id orci faucibus, ultricies lorem nec, cursus nunc. Fusce ipsum nulla, dignissim vitae pharetra vitae, feugiat at massa. Vestibulum a ornare lacus. Suspendisse potenti.'),
(1, '2020-06-23 13:05:28', 'Vestibulum in accumsan tortor. Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.'),
(1, '2020-06-23 13:41:27', 'Fusce finibus augue quis scelerisque molestie. Suspendisse ullamcorper massa id pharetra euismod. Phasellus vitae erat tincidunt, pretium libero eget, imperdiet tortor. Ut at porttitor urna, a vulputate ipsum. Phasellus vehicula fermentum sem ut viverra. Ut lacinia, diam ut ullamcorper venenatis, diam nisl sodales massa, nec vulputate metus purus vitae diam. Etiam ac magna tincidunt, aliquam nisl non, pellentesque nulla. Nullam in justo eros. Nulla velit felis, dictum commodo risus eget, faucibus volutpat nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nFusce finibus augue quis scelerisque molestie. Suspendisse ullamcorper massa id pharetra euismod. Phasellus vitae erat tincidunt, pretium libero eget, imperdiet tortor. Ut at porttitor urna, a vulputate ipsum. Phasellus vehicula fermentum sem ut viverra. Ut lacinia, diam ut ullamcorper venenatis, diam nisl sodales massa, nec vulputate metus purus vitae diam. Etiam ac magna tincidunt, aliquam nisl non, pellentesque nulla. Nullam in justo eros. Nulla velit felis, dictum commodo risus eget, faucibus volutpat nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nFusce finibus augue quis scelerisque molestie. Suspendisse ullamcorper massa id pharetra euismod. Phasellus vitae erat tincidunt, pretium libero eget, imperdiet tortor. Ut at porttitor urna, a vulputate ipsum. Phasellus vehicula fermentum sem ut viverra. Ut lacinia, diam ut ullamcorper venenatis, diam nisl sodales massa, nec vulputate metus purus vitae diam. Etiam ac magna tincidunt, aliquam nisl non, pellentesque nulla. Nullam in justo eros. Nulla velit felis, dictum commodo risus eget, faucibus volutpat nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nFusce finibus augue quis scelerisque molestie. Suspendisse ullamcorper massa id pharetra euismod. Phasellus vitae erat tincidunt, pretium libero eget, imperdiet tortor. Ut at porttitor urna, a vulputate ipsum. Phasellus vehicula fermentum sem ut viverra. Ut lacinia, diam ut ullamcorper venenatis, diam nisl sodales massa, nec vulputate metus purus vitae diam. Etiam ac magna tincidunt, aliquam nisl non, pellentesque nulla. Nullam in justo eros. Nulla velit felis, dictum commodo risus eget, faucibus volutpat nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nFusce finibus augue quis scelerisque molestie. Suspendisse ullamcorper massa id pharetra euismod. Phasellus vitae erat tincidunt, pretium libero eget, imperdiet tortor. Ut at porttitor urna, a vulputate ipsum. Phasellus vehicula fermentum sem ut viverra. Ut lacinia, diam ut ullamcorper venenatis, diam nisl sodales massa, nec vulputate metus purus vitae diam. Etiam ac magna tincidunt, aliquam nisl non, pellentesque nulla. Nullam in justo eros. Nulla velit felis, dictum commodo risus eget, faucibus volutpat nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae'),
(1, '2020-06-23 16:37:25', 'Donec pretium est ac dolor pulvinar, id placerat lorem sodales. Phasellus fermentum odio eget vulputate euismod. Sed a massa dui. Proin molestie placerat tempus. Phasellus pulvinar sed dui vitae ultricies. Vivamus condimentum, dolor vel dignissim finibus, massa orci dictum arcu, sit amet pharetra leo ex vitae risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce suscipit lacus est, ut gravida ligula fermentum vel. Praesent mollis lectus ex, accumsan tempor turpis pellentesque at'),
(1, '2020-06-26 07:08:27', 'Aenean tempus ullamcorper turpis, sit amet consequat tortor rhoncus in. Suspendisse mauris purus, efficitur eget maximus at, tincidunt at mauris. Donec et enim sem. In nec vehicula nulla. Vestibulum semper, ipsum sed venenatis placerat, diam ex dapibus metus, nec interdum tortor velit ac elit. Ut quis odio non libero lacinia malesuada at commodo erat. Aliquam vehicula nisi elit, nec finibus sapien aliquet sed. Integer ut hendrerit risus. Nunc imperdiet sit amet risus ut volutpat. In nec ornare risus. Maecenas fermentum faucibus enim, vitae interdum libero accumsan in. Aenean sem arcu, laoreet rutrum ante non, ullamcorper ornare mi. Mauris eu hendrerit dolor, sit amet faucibus arcu. In ut justo sed metus dignissim auctor. Aliquam hendrerit a sem ut porta.'),
(1, '2020-06-26 15:04:45', 'Maecenas condimentum venenatis purus, porttitor consectetur leo eleifend nec. Aliquam erat volutpat. Ut vel vestibulum erat. In faucibus quis sapien non condimentum. Praesent luctus, odio vel interdum sagittis, lorem nulla viverra eros, eget tempus lorem lacus ut diam. Aliquam erat volutpat. Nulla a tristique purus. Phasellus ullamcorper facilisis augue vitae viverra. Fusce pellentesque aliquam lacus, eu tincidunt magna volutpat vitae. Pellentesque massa tellus, finibus in nibh sit amet, lacinia efficitur mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus metus, volutpat id commodo ac, pulvinar sed diam. Etiam consequat lorem nec nibh malesuada vehicula. Pellentesque auctor odio non elit sodales consectetu'),
(1, '2020-06-30 18:32:20', 'Maecenas fringilla id nulla quis mattis. Duis fringilla ornare lorem, eu rhoncus lacus. Nulla eu dictum turpis, quis gravida sapien. Fusce maximus dapibus venenatis. Phasellus mollis elementum placerat. Proin ac felis condimentum, mattis orci nec, pellentesque lacus. Aenean ut suscipit risus. Duis a aliquet odio. Nulla accumsan congue purus, mollis rhoncus dui malesuada auctor. Morbi efficitur nunc orci, et placerat mauris ultricies vulputate. Nunc ut sodales lacus. In id fermentum ante, vel ullamcorper mauris.'),
(1, '2020-06-30 18:32:59', 'Fusce malesuada mattis orci vel tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed erat aliquet, vestibulum arcu sit amet, porta felis. Morbi id fringilla mauris, sit amet iaculis mauris. Praesent fringilla mi vel diam scelerisque lacinia. Aenean feugiat ullamcorper ligula eget auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut non condimentum mauris, nec eleifend nulla. Proin finibus tempor sapien blandit semper. Proin orci magna, suscipit nec porttitor a, facilisis non sapien.'),
(1, '2020-06-30 18:33:24', 'Aenean pulvinar sem metus, tincidunt posuere est pulvinar volutpat. Donec ornare consectetur commodo. Proin consequat est nec hendrerit mollis. Morbi ut nibh a dui pharetra tincidunt id a neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec luctus efficitur urna, vel dapibus mi eleifend ut. Mauris elementum sed mi eget suscipit. Vestibulum hendrerit, nisi sit amet feugiat fermentum, turpis diam semper libero, in congue nulla justo in nisl.'),
(1, '2020-06-30 18:34:25', 'Suspendisse ac urna vel leo lacinia tincidunt eu eu risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer porta ultrices ligula at blandit. Proin viverra luctus dui, maximus consectetur risus faucibus nec. Phasellus vel porttitor sapien. Curabitur justo dui, molestie sed tincidunt a, euismod eget ligula. Integer lectus urna, iaculis a sem nec, ornare lacinia lacus. Maecenas id metus vitae diam pulvinar faucibus sed in quam. Donec ut mollis risus. Praesent ut dui molestie, aliquam sapien eget, aliquam augue. Curabitur at dui a mi consectetur lobortis.'),
(1, '2020-06-30 18:35:32', 'Phasellus et commodo ligula. Duis vel convallis metus, quis dapibus metus. Praesent faucibus justo lacus, nec rhoncus ex dictum eget. Aenean quis turpis ut justo molestie ultrices in in tellus. Integer risus neque, egestas ut auctor ut, congue at nunc. In vitae nunc nec ex porttitor varius. Donec tincidunt lectus justo, vel dictum libero vestibulum vel. Aliquam erat volutpat. Nunc viverra in nibh eu gravida. In id turpis laoreet, viverra ipsum in, viverra nisl. Curabitur ac pretium leo. Quisque at enim magna. Nullam efficitur condimentum velit, sit amet suscipit dolor cursus in. Vestibulum et turpis ac ipsum fermentum finibus. Aenean vestibulum sodales sagittis. In ut magna ac velit bibendum euismod at quis sem.'),
(1, '2020-06-30 18:35:59', 'Curabitur sit amet pulvinar justo, sed mattis felis. Praesent aliquet risus vitae ligula varius fringilla. Mauris tempus eu risus eget porta. Praesent rutrum, arcu sit amet iaculis malesuada, nulla ipsum porta nisi, pretium ullamcorper nibh mi nec ex. Sed molestie, eros a pulvinar rhoncus, enim tellus mattis felis, et convallis ligula quam eu sem. Phasellus scelerisque dolor ultrices eros egestas rutrum. Curabitur eu pharetra nunc. Donec at augue dui. Sed in lectus enim. Sed sollicitudin metus non nibh rhoncus pretium.'),
(1, '2020-06-30 18:36:20', 'Mauris mollis tellus at elit pellentesque condimentum. Donec facilisis orci eu erat mattis, at auctor arcu rhoncus. Nullam arcu velit, lobortis in nibh nec, vehicula laoreet orci. Fusce at luctus est. Suspendisse ut lobortis risus. Morbi tincidunt, lectus ut facilisis aliquet, sem quam semper diam, ultricies commodo nisi purus tempus ipsum. Praesent vitae odio auctor, imperdiet dui sed, vulputate quam. Vestibulum aliquam est ac eros varius, a vulputate ante blandit. Maecenas vestibulum magna diam, laoreet semper magna auctor vel. Sed blandit laoreet condimentum. Cras egestas blandit sapien quis tincidunt. Aliquam nulla neque, tempor vitae ante vel, ultrices gravida ipsum.'),
(1, '2020-06-30 19:41:08', 'Fusce pulvinar ex dictum urna volutpat, nec eleifend ante eleifend. Quisque lacinia turpis vel mollis ultricies. Ut blandit tincidunt tristique. Integer rhoncus, massa ac vulputate maximus, mauris ante vehicula felis, eu rhoncus orci orci vel neque. Sed nec libero massa. Cras varius sollicitudin nunc. Donec interdum quam sit amet vehicula pretium. Nullam porttitor elit velit, id sagittis nisi euismod non. Aliquam vitae arcu ut nibh commodo tristique. Maecenas aliquet arcu at volutpat blandit. Aliquam iaculis bibendum mi in fermentum. Suspendisse sed enim lectus. Aenean non aliquet quam. Nunc tristique quam sem, sit amet sodales arcu porta ac. Vivamus a ipsum eget dolor congue auctor vel nec nulla.'),
(1, '2020-06-30 19:41:34', 'Integer non commodo turpis. Morbi molestie odio non laoreet mattis. Suspendisse potenti. Donec ac egestas turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque viverra mauris sit amet porta hendrerit. Fusce eget fringilla nisl, eu tristique turpis. Suspendisse molestie efficitur finibus.'),
(1, '2020-06-30 19:41:56', 'Praesent eleifend consequat posuere. Phasellus nisl metus, porta eget bibendum vitae, semper congue risus. Integer id arcu libero. Vivamus sodales interdum mauris. Mauris pellentesque lobortis neque, in pulvinar ex lacinia ut. Ut vitae orci enim. Nullam non libero nibh. Nulla at turpis in tortor efficitur blandit a imperdiet nisl. Maecenas sapien augue, scelerisque at porttitor at, elementum convallis diam. Suspendisse imperdiet rhoncus purus eget rutrum.'),
(1, '2020-06-30 19:42:19', 'Nulla sapien sapien, eleifend sed massa ac, sagittis vehicula dui. Pellentesque pretium nulla eu ante accumsan, in rutrum felis dapibus. Ut at leo fermentum, dapibus purus sed, fringilla neque. Sed lorem ligula, vestibulum ac bibendum at, egestas congue ante. Aliquam eu pharetra magna. Nam tristique aliquet metus euismod lobortis. Mauris quis lorem eleifend, fermentum ex ac, facilisis turpis.'),
(1, '2020-06-30 19:44:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ligula mauris, pharetra ac purus sit amet, commodo vestibulum nisi. Cras semper odio at ligula imperdiet consequat. Aenean elementum nisi a bibendum consectetur. Mauris maximus eros eget interdum elementum. Maecenas lacinia venenatis nisl quis sagittis. Cras aliquam molestie egestas. Donec eu justo ligula.'),
(1, '2020-06-30 19:44:53', 'Quisque euismod diam sit amet ultrices aliquam. Pellentesque semper aliquam lectus, in venenatis ipsum blandit eget. Vestibulum vel erat condimentum, molestie leo eu, fermentum turpis. Phasellus et dui non neque venenatis scelerisque rhoncus at leo. Sed bibendum sem velit, ut mollis tortor pellentesque quis. In hac habitasse platea dictumst. Nulla gravida nec enim sed gravida. Nunc nec varius dolor, eget malesuada leo. In nec neque tempus, ultricies arcu non, finibus purus. Phasellus sed eleifend odio, in finibus risus.'),
(1, '2020-06-30 20:14:02', '<p><strong>Vestibulum in accumsan tortor.</strong> Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.</p>'),
(1, '2020-06-30 20:14:54', '<p>Vestibulum in accumsan tortor. Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.Vestibulum in accumsan tortor. Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.</p>'),
(1, '2020-06-30 20:20:19', '<ul>\n <li><strong>Vestibulum in accumsan tortor.</strong> Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.</li>\n <li><em>Vestibulum in accumsan </em>tortor. Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.\n  <ul>\n   <li>Vestibulum in accumsan tortor. Sed molestie sapien nec quam mollis, nec convallis velit venenatis. Nulla facilisi. Vivamus gravida lorem vel sodales mollis. Ut lobortis eros vitae felis gravida, mollis convallis ante finibus. Etiam tortor mauris, fringilla non arcu at, ultricies euismod leo. Nullam posuere suscipit posuere. Mauris molestie quam ac libero feugiat, a venenatis mauris aliquet. Nunc facilisis dictum diam a ornare. Cras et mollis massa. Pellentesque accumsan euismod augue, nec consectetur magna. Fusce vel purus eget est commodo dictum nec vel leo. Aenean malesuada porttitor vulputate.</li>\n  </ul></li>\n</ul>'),
(1, '2020-07-01 17:43:17', '<p><strong>Sed ut perspiciatis unde omnis iste natus</strong> error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>'),
(8, '2020-06-30 15:58:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(9, '2020-07-03 18:35:08', '<p><strong>1914 translation by H. Rackham</strong></p>\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL,
  `password` char(64) NOT NULL,
  `salt` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `salt`) VALUES
(1, 'Anirban Mukherjee', 'anirban@gmail.com', '540e389908091492bb7ccdeaf517bd6a977b5fe64b1b49134e4cf33b9ce8b2d6', 'S¥x»ëXÔ\'ü Wäª'),
(5, 'Souvik Das', 'souvik@gmail.com', '82b1470ce7b436a2d22b76dee16647288fa41c154bc0fcf795944e447ceec2c5', 'c¸ÅXïb\0f{çL´Tû'),
(6, 'Anirban Mukherjee', 'anirbanmukherjee952@gmail.com', 'f2fb7733b86404a03601b1497f4faf45c0f178a5b04bf7899a789c38eaa9cfca', '~älU¶Ó7Ó5J×A'),
(7, 'Ram Paul', 'rp@gmail.com', '42e4d13b5c248bc3760b5e779e3f5d4e822eac173ea64d0d80cf86bcc175cfcf', 'Ç?S:+â7ïjËåi	à'),
(8, 'Saikat Mukherjee', 'saikat24@gmail.com', '73b5e464d85385307663d3d158ae6a8cd80100f4d67447c4aa090d07716df362', 'Ò\'«óc!ºH·aã'),
(9, 'Ritwik Dey', 'rdey90@gmail.com', 'd3de76a850adcb8549d8ebd65fe3e3cb4a79e6f7983ff25af49a17030194ee92', '5ÆEIÚþ¯e#!ó+ì#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`user_id`,`entry_ts`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diary`
--
ALTER TABLE `diary`
  ADD CONSTRAINT `diarytabfkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
